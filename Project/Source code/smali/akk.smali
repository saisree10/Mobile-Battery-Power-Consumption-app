.class public Lakk;
.super Ljava/lang/Object;
.source "HotQAActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/feedback/HotQAActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/feedback/HotQAActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lakk;->a:Lcom/dianxinos/powermanager/feedback/HotQAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lakk;->a:Lcom/dianxinos/powermanager/feedback/HotQAActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/feedback/HotQAActivity;->onBackPressed()V

    .line 47
    return-void
.end method
