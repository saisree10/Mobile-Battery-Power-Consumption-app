.class public Laxg;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/update/DownloadActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/update/DownloadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Laxg;->a:Lcom/dianxinos/powermanager/update/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Laxg;->a:Lcom/dianxinos/powermanager/update/DownloadActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/update/DownloadActivity;->finish()V

    .line 92
    return-void
.end method
