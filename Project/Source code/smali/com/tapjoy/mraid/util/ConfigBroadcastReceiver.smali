.class public Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfigBroadcastReceiver.java"


# instance fields
.field private mLastOrientation:I

.field private mMraidDisplay:Lcom/tapjoy/mraid/controller/Display;


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/controller/Display;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;->mMraidDisplay:Lcom/tapjoy/mraid/controller/Display;

    .line 30
    iget-object v0, p0, Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;->mMraidDisplay:Lcom/tapjoy/mraid/controller/Display;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Display;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;->mLastOrientation:I

    .line 31
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;->mMraidDisplay:Lcom/tapjoy/mraid/controller/Display;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Display;->getOrientation()I

    move-result v0

    .line 41
    iget v1, p0, Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 42
    iput v0, p0, Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;->mLastOrientation:I

    .line 43
    iget-object v0, p0, Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;->mMraidDisplay:Lcom/tapjoy/mraid/controller/Display;

    iget v1, p0, Lcom/tapjoy/mraid/util/ConfigBroadcastReceiver;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/controller/Display;->onOrientationChanged(I)V

    .line 46
    :cond_0
    return-void
.end method
