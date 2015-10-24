.class public Lif;
.super Ljava/lang/Object;
.source "DownLoadDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lif;->c:Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;

    iput-object p2, p0, Lif;->a:Ljava/lang/String;

    iput-object p3, p0, Lif;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lif;->c:Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;

    invoke-static {v0}, Lhj;->a(Landroid/content/Context;)Lhj;

    move-result-object v0

    invoke-static {}, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lif;->a:Ljava/lang/String;

    iget-object v3, p0, Lif;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 102
    iget-object v0, p0, Lif;->c:Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;

    invoke-virtual {v0}, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->finish()V

    .line 103
    return-void
.end method
