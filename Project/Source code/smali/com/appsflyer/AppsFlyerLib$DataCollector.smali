.class Lcom/appsflyer/AppsFlyerLib$DataCollector;
.super Ljava/lang/Object;
.source "AppsFlyerLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->a:Landroid/content/Context;

    .line 363
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->b:Ljava/lang/String;

    .line 364
    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->c:Ljava/lang/String;

    .line 365
    iput-object p4, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->d:Ljava/lang/String;

    .line 366
    iput-object p5, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->e:Ljava/lang/String;

    .line 367
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/AppsFlyerLib$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-direct/range {p0 .. p5}, Lcom/appsflyer/AppsFlyerLib$DataCollector;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 370
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return-void
.end method
