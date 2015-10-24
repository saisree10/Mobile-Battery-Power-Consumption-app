.class Lcom/tapjoy/mraid/view/Browser$1;
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
    .line 122
    iput-object p1, p0, Lcom/tapjoy/mraid/view/Browser$1;->this$0:Lcom/tapjoy/mraid/view/Browser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tapjoy/mraid/view/Browser$1;->this$0:Lcom/tapjoy/mraid/view/Browser;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 127
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/mraid/view/Browser$1;->this$0:Lcom/tapjoy/mraid/view/Browser;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/Browser;->finish()V

    goto :goto_0
.end method
