.class Lcom/tapjoy/TapjoyDisplayAd$1;
.super Ljava/lang/Object;
.source "TapjoyDisplayAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyDisplayAd;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyDisplayAd;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/tapjoy/TapjoyDisplayAd$1;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$1;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    new-instance v1, Lcom/tapjoy/mraid/view/MraidView;

    iget-object v2, p0, Lcom/tapjoy/TapjoyDisplayAd$1;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    #getter for: Lcom/tapjoy/TapjoyDisplayAd;->activityContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/tapjoy/TapjoyDisplayAd;->access$000(Lcom/tapjoy/TapjoyDisplayAd;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tapjoy/mraid/view/MraidView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/tapjoy/TapjoyDisplayAd;->webView:Lcom/tapjoy/mraid/view/MraidView;

    .line 156
    return-void
.end method
