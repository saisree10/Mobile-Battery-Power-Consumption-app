.class public Lih;
.super Ljava/lang/Object;
.source "DownLoadDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lih;->d:Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;

    iput-object p2, p0, Lih;->a:Ljava/lang/String;

    iput-object p3, p0, Lih;->b:Ljava/lang/String;

    iput-object p4, p0, Lih;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lih;->d:Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;

    invoke-static {v0}, Lhj;->a(Landroid/content/Context;)Lhj;

    move-result-object v0

    iget-object v1, p0, Lih;->a:Ljava/lang/String;

    invoke-static {}, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lih;->b:Ljava/lang/String;

    iget-object v4, p0, Lih;->c:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILhk;)V

    .line 125
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 126
    iget-object v0, p0, Lih;->d:Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;

    invoke-virtual {v0}, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->finish()V

    .line 127
    return-void
.end method
