public class DaoFactory {

    private static Ads adsDao;

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(new Config());
        }
        return adsDao;

    private static Products productsDao;

    public static Products getProductsDao(){
        if(productsDao == null){
            productsDao = new ListProducts();
        }
        return productsDao;

    }
}
