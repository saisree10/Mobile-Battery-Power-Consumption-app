.class Lcom/tapjoy/TapjoyVideoView$8;
.super Ljava/lang/Object;
.source "TapjoyVideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyVideoView;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 761
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView$8;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 765
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 766
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$8;->this$0:Lcom/tapjoy/TapjoyVideoView;

    #setter for: Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z
    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyVideoView;->access$1302(Lcom/tapjoy/TapjoyVideoView;Z)Z

    .line 767
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$8;->this$0:Lcom/tapjoy/TapjoyVideoView;

    #calls: Lcom/tapjoy/TapjoyVideoView;->finishWithResult(Z)V
    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyVideoView;->access$1400(Lcom/tapjoy/TapjoyVideoView;Z)V

    .line 768
    return-void
.end method
