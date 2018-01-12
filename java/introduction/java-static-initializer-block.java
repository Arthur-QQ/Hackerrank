private static boolean flag;
private static int H;
private static int B;

static {
    Scanner sc = new Scanner(System.in);
    H = sc.nextInt();
    B = sc.nextInt();
    sc.close();
    try {
        if (B <= 0 || H <= 0) {
            flag = false;
            throw new java.lang.Exception("Breadth and height must be positive");
        } else {
            flag = true;
        }
    } catch (Exception e) {
        System.out.println(e);
    }
}
