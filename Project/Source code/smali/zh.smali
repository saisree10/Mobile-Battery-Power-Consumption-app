.class public Lzh;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/optimizer/module/messagebox/WebActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/optimizer/module/messagebox/WebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lzh;->a:Lcom/dianxinos/optimizer/module/messagebox/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 66
    iget-object v0, p0, Lzh;->a:Lcom/dianxinos/optimizer/module/messagebox/WebActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->a(Lcom/dianxinos/optimizer/module/messagebox/WebActivity;Z)Z

    .line 67
    iget-object v0, p0, Lzh;->a:Lcom/dianxinos/optimizer/module/messagebox/WebActivity;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->a(Lcom/dianxinos/optimizer/module/messagebox/WebActivity;J)J

    .line 68
    iget-object v0, p0, Lzh;->a:Lcom/dianxinos/optimizer/module/messagebox/WebActivity;

    invoke-static {v0}, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->a(Lcom/dianxinos/optimizer/module/messagebox/WebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 69
    iget-object v0, p0, Lzh;->a:Lcom/dianxinos/optimizer/module/messagebox/WebActivity;

    const-string v1, "wac"

    const-string v2, "wrc"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v0, v1, v2, v3}, Lbal;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 72
    return-void
.end method
