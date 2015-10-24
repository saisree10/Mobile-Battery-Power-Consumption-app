.class public Lzg;
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
    .line 56
    iput-object p1, p0, Lzg;->a:Lcom/dianxinos/optimizer/module/messagebox/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lzg;->a:Lcom/dianxinos/optimizer/module/messagebox/WebActivity;

    invoke-virtual {v0}, Lcom/dianxinos/optimizer/module/messagebox/WebActivity;->finish()V

    .line 60
    return-void
.end method
