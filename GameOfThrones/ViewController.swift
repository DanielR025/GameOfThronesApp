//
//  ViewController.swift
//  GameOfThrones
//
//  Created by Daniel Reicher on 05.08.17.
//  Copyright © 2017 Daniel Reicher. All rights reserved.
//

import UIKit
import GoogleMobileAds
import StoreKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchBarDelegate, GADInterstitialDelegate, SKPaymentTransactionObserver, SKProductsRequestDelegate{

    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var settingsBtn: UIButton!
    @IBOutlet weak var menueView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var collectionViewConstraint: NSLayoutConstraint!
    @IBOutlet weak var searchBarConstraint: NSLayoutConstraint!
    @IBOutlet weak var searchBarWidth: NSLayoutConstraint!
    @IBOutlet weak var removeAdsBtn: UIButton!
    
    
    @IBOutlet weak var bannerView: GADBannerView!
    @IBOutlet weak var copyrightTxt: UITextView!
    var product: SKProduct?
    var productID = "Daniel.Reicher.GameOfThrones.removeads"
    
    var allCharakters = [Charakter]()
    var filteredCharacters = [Charakter]()
    var searchMode = false
    var menueShowing = false
    var clickCount = 1
    var removedAds = false
    var interstitial: GADInterstitial!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        removedAds = UserDefaults.standard.bool(forKey: "RemoveAds")
        
        bannerView.adUnitID = "ca-app-pub-5032774381646153/9713144973"
        bannerView.rootViewController = self
        bannerView.adSize = kGADAdSizeSmartBannerPortrait
        if removedAds == false {
        bannerView.load(GADRequest())
        } else {
            print("AdsRemoved")
        }
        
        interstitial = createAndLoadInterstitial()
        
        removeAdsBtn.isEnabled = false
        SKPaymentQueue.default().add(self)
        getPurchaseInfo()
        
        
        allCharakters = LibraryAPI.shared.getChars()
        
        collection.delegate = self
        collection.dataSource = self
        searchBar.delegate = self
        
        setUI()
        
    }

    override func viewDidAppear(_ animated: Bool) {
        settingsBtn.isHidden = false
        }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if searchMode {
            return filteredCharacters.count
        }
        
        return allCharakters.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GOTCell", for: indexPath) as? GOTCell {
            
            let charakter: Charakter!
            
            if searchMode {
                charakter = filteredCharacters[indexPath.row]
            } else {
                charakter = allCharakters[indexPath.row]
            }
            cell.configureCell(charakter: charakter, screen: view.frame.width)
            
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let charakter: Charakter!

        if searchMode {
            charakter = filteredCharacters[indexPath.row]
        } else {
            charakter = allCharakters[indexPath.row]
        }

        
        settingsBtn.isHidden = true
        
        
        performSegue(withIdentifier: "WebView", sender: charakter.url)
        loadAdafterClick()
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if view.frame.width < 375 {
            return CGSize(width: 80, height: 83)
        }
        
        return CGSize(width: 100, height: 103) //100 x 103
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let backItem = UIBarButtonItem()
            backItem.title = "   back"
            navigationItem.backBarButtonItem = backItem
        if let destination = segue.destination as? WebView {
            
            if let website = sender as? String {
            destination.url = website
            }
        }
    
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        view.endEditing(true)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBar.text == nil || searchBar.text == "" {
            searchMode = false
            collection.reloadData()
            view.endEditing(true)
        } else {
            searchMode = true
            let lower = searchBar.text!
            filteredCharacters = allCharakters.filter({$0.name.range(of: lower) != nil })
            collection.reloadData()
        }
    }
    
        
    @IBAction func settingsBtnPressed(_ sender: Any) {
        
        if menueShowing == false {
        leadingConstraint.constant = 0
        collectionViewConstraint.constant += 170
        searchBarConstraint.constant += 170
        menueShowing = true
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()})
            
        
        } else {
            leadingConstraint.constant = -170
            collectionViewConstraint.constant = 20
            searchBarConstraint.constant = 0
            menueShowing = false
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()})
            

        }
    }
    
    @IBAction func mapBtnPressed(_ sender: Any) {
        loadAdafterClick()
        performSegue(withIdentifier: "MapView", sender: self)
        leadingConstraint.constant = -170
        collectionViewConstraint.constant = 20
        searchBarConstraint.constant = 0
        menueShowing = false
        UIView.animate(withDuration: 0.7, animations: {
            self.view.layoutIfNeeded()})


    }
    @IBAction func copyrightBtnPressed(_ sender: Any) {
        if copyrightTxt.isHidden {
            copyrightTxt.isHidden = false
        } else {
            copyrightTxt.isHidden = true
        }
    }
    @IBAction func episodesBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "WebView", sender: episodesWebView)
        loadAdafterClick()
    }
    
    
    
    
    
    func createAndLoadInterstitial() -> GADInterstitial {
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-5032774381646153/2892408143")
        interstitial.delegate = self
        interstitial.load(GADRequest())
        return interstitial
    }
    
    func interstitialDidDismissScreen(_ ad: GADInterstitial) {
        interstitial = createAndLoadInterstitial()
    }
    
    func loadAdafterClick(){
        clickCount += 1
        if removedAds == false {
            let restwert = clickCount % 3
            print(restwert)
            if interstitial.isReady && restwert == 0{
                interstitial.present(fromRootViewController: self)
            }
        }

    }
    
    
    @IBAction func removeAdsBtnPressed(_ sender: Any) {
        
        let payment = SKPayment(product: product!)
        SKPaymentQueue.default().add(payment)
    }
    
    
    
    func getPurchaseInfo(){
        if SKPaymentQueue.canMakePayments() {
            let request = SKProductsRequest(productIdentifiers: NSSet(object: self.productID) as! Set<String>)
            request.delegate = self
            request.start()
        } else {
            print("in app purchase not enabled")
        }
    }
    
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        var products = response.products
        
        if products.count == 0 {
            print("product not found")
        } else {
        product = products[0]
        removeAdsBtn.isEnabled = true
        
        }
        
        let invalids = response.invalidProductIdentifiers
        for product in invalids {
            print("Product not found: \(product)")
        }
    }
    
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        
        for transaction in transactions {
            
            switch transaction.transactionState {
                
            case SKPaymentTransactionState.purchased:
                SKPaymentQueue.default().finishTransaction(transaction)
                removeAdsBtn.isEnabled = false
                removedAds = true
                UserDefaults.standard.set(removedAds, forKey: "RemoveAds")
                bannerView.isHidden = true
                print("Product purchased")
                
            case SKPaymentTransactionState.failed:
                SKPaymentQueue.default().finishTransaction(transaction)
                
                print("Product has not been purchased")
                
                
            default:
                break
                }
            
            
            
            }
        }
    
    
    @IBAction func restorePurchaseBtnPressed(_ sender: Any) {
        SKPaymentQueue.default().restoreCompletedTransactions()
    }
    
    func setUI(){
        
        var image = UIImage(named: "logoNavBar")!
        
        if view.frame.size.width > 360 {
            image = UIImage(named: "logooo")!
        }
        
        let imageView = UIImageView(image: image)
        imageView.frame.size.width = 180
        
        
        imageView.frame = CGRect(x: 0, y: 0, width: 180, height: 24)
        imageView.contentMode = .scaleAspectFit
        
        navigationItem.titleView = imageView
        menueView.alpha = 0.6
        menueView.layer.shadowOpacity = 1
        leadingConstraint.constant = -170
        searchBarWidth.constant = view.frame.width
        searchBar.returnKeyType = .done
        searchBar.keyboardAppearance = .dark
        searchBar.autocapitalizationType = .words
        searchBar.enablesReturnKeyAutomatically = false


    }
    
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


