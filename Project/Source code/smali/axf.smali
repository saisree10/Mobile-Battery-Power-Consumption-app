.class public Laxf;
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
    .line 72
    iput-object p1, p0, Laxf;->a:Lcom/dianxinos/powermanager/update/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Laxf;->a:Lcom/dianxinos/powermanager/update/DownloadActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/update/DownloadActivity;->a(Lcom/dianxinos/powermanager/update/DownloadActivity;)Lka;

    move-result-object v0

    invoke-virtual {v0}, Lka;->d()V

    .line 76
    iget-object v0, p0, Laxf;->a:Lcom/dianxinos/powermanager/update/DownloadActivity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/update/DownloadActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 79
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 80
    invoke-static {}, Laxn;->e()V

    .line 81
    iget-object v0, p0, Laxf;->a:Lcom/dianxinos/powermanager/update/DownloadActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/update/DownloadActivity;->finish()V

    .line 82
    return-void
.end method
