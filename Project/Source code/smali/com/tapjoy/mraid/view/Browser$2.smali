.class Lcom/tapjoy/mraid/view/Browser$2;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tapjoy/mraid/view/Browser;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/Browser;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/tapjoy/mraid/view/Browser$2;->this$0:Lcom/tapjoy/mraid/view/Browser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/tapjoy/mraid/view/Browser$2;->this$0:Lcom/tapjoy/mraid/view/Browser;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 151
    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 152
    return-void
.end method
