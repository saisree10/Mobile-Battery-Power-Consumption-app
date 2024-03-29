.class public Lcom/tapjoy/TJCOffers;
.super Ljava/lang/Object;
.source "TJCOffers.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TapjoyOffers"

.field private static tapjoyOffersNotifier:Lcom/tapjoy/TapjoyOffersNotifier;


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static getOffersNotifierResponse()V
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/tapjoy/TJCOffers;->tapjoyOffersNotifier:Lcom/tapjoy/TapjoyOffersNotifier;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/tapjoy/TJCOffers;->tapjoyOffersNotifier:Lcom/tapjoy/TapjoyOffersNotifier;

    invoke-interface {v0}, Lcom/tapjoy/TapjoyOffersNotifier;->getOffersResponse()V

    .line 115
    :cond_0
    return-void
.end method

.method public static getOffersNotifierResponseFailed(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    sget-object v0, Lcom/tapjoy/TJCOffers;->tapjoyOffersNotifier:Lcom/tapjoy/TapjoyOffersNotifier;

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/tapjoy/TJCOffers;->tapjoyOffersNotifier:Lcom/tapjoy/TapjoyOffersNotifier;

    invoke-interface {v0, p0}, Lcom/tapjoy/TapjoyOffersNotifier;->getOffersResponseFailed(Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public showOffers(Lcom/tapjoy/TapjoyOffersNotifier;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/tapjoy/TJCOffers;->showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TapjoyOffersNotifier;)V

    .line 39
    return-void
.end method

.method public showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TJEventData;Ljava/lang/String;Lcom/tapjoy/TapjoyOffersNotifier;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 64
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    invoke-static {v6}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(I)V

    .line 67
    sput-object p5, Lcom/tapjoy/TJCOffers;->tapjoyOffersNotifier:Lcom/tapjoy/TapjoyOffersNotifier;

    .line 69
    if-eqz p2, :cond_3

    const-string v0, "1"

    .line 72
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 74
    const-string v2, "currency_id"

    invoke-static {v1, v2, p1, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 75
    const-string v2, "currency_selector"

    invoke-static {v1, v2, v0, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getVideoParams()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 80
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    const-class v3, Lcom/tapjoy/TJCOffersWebView;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    if-eqz p3, :cond_0

    .line 84
    const-string v0, "TapjoyOffers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showOffers for eventName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/tapjoy/TJEventData;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 88
    const-string v0, "callback_id"

    invoke-virtual {v2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    :cond_1
    const-string v0, "view_type"

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    const-string v0, "tjevent"

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 92
    const-string v0, "legacy_view"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    const-string v0, "URL_PARAMS"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v2, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 106
    :cond_2
    :goto_1
    return-void

    .line 69
    :cond_3
    const-string v0, "0"

    goto :goto_0

    .line 102
    :cond_4
    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    iget-object v0, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TapjoyOffersNotifier;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 50
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/TJCOffers;->showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TJEventData;Ljava/lang/String;Lcom/tapjoy/TapjoyOffersNotifier;)V

    .line 51
    return-void
.end method
