.class public Lazp;
.super Ljava/lang/Object;
.source "FontUtils.java"


# static fields
.field private static a:Lazp;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/graphics/Typeface;

.field private d:Landroid/graphics/Typeface;

.field private e:Landroid/graphics/Typeface;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lazp;->b:Landroid/content/Context;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Harabara.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lazp;->c:Landroid/graphics/Typeface;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Novecentowide-Normal.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lazp;->d:Landroid/graphics/Typeface;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/BEBAS___.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lazp;->e:Landroid/graphics/Typeface;

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;)Lazp;
    .locals 2
    .parameter

    .prologue
    .line 24
    sget-object v0, Lazp;->a:Lazp;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lazp;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lazp;->a:Lazp;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lazp;

    invoke-direct {v0, p0}, Lazp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lazp;->a:Lazp;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lazp;->a:Lazp;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lazp;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    .line 68
    :catch_0
    move-exception v0

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lazp;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lazp;->c:Landroid/graphics/Typeface;

    .line 38
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lazp;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lazp;->d:Landroid/graphics/Typeface;

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lazp;->d:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public d()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lazp;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lazp;->e:Landroid/graphics/Typeface;

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
