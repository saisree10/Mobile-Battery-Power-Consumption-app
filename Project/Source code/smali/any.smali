.class public Lany;
.super Lng;
.source "CloudPkgListManager.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Landroid/content/SharedPreferences;

.field private static c:Lany;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cn.opda.a.phonoalbumshoushou"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.baidu.browser.inter"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cn.jingling.motu.photowonder"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.dianxinos"

    aput-object v2, v0, v1

    sput-object v0, Lany;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lng;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static a(Landroid/content/Context;)Lany;
    .locals 2
    .parameter

    .prologue
    .line 31
    sget-object v0, Lany;->c:Lany;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lany;

    const-string v1, "cloud_pkg_list"

    invoke-direct {v0, p0, v1}, Lany;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lany;->c:Lany;

    .line 33
    const-string v0, "cpl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lany;->b:Landroid/content/SharedPreferences;

    .line 35
    :cond_0
    sget-object v0, Lany;->c:Lany;

    return-object v0
.end method

.method private a([Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 52
    :try_start_0
    invoke-static {p1}, Lany;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 53
    const-string v1, "cpl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 56
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    .line 57
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_0

    .line 59
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    sget-object v0, Lany;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cpl"

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lbex;->a([B)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_1
    return-void

    .line 64
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected d()V
    .locals 3

    .prologue
    .line 44
    sget-object v0, Lany;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cpl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    const-string v0, "onRecommendDisabled"

    invoke-direct {p0, v0}, Lany;->d(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method protected e()J
    .locals 2

    .prologue
    .line 70
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public f()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lany;->b:Landroid/content/SharedPreferences;

    const-string v1, "cpl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-nez v0, :cond_0

    .line 76
    const-string v0, "default pkgs"

    invoke-direct {p0, v0}, Lany;->d(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lany;->a:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lany;->a([Ljava/lang/String;)V

    .line 78
    sget-object v0, Lany;->a:[Ljava/lang/String;

    .line 84
    :goto_0
    return-object v0

    .line 80
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lbex;->b([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 81
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "cloud pkgs"

    invoke-direct {p0, v1}, Lany;->d(Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, v0}, Lany;->a([Ljava/lang/String;)V

    goto :goto_0
.end method
