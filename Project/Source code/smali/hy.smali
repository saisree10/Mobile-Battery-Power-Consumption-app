.class public Lhy;
.super Ljava/lang/Object;
.source "ADMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/acomponent/ui/ADMainActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/acomponent/ui/ADMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lhy;->a:Lcom/dianxinos/acomponent/ui/ADMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lhy;->a:Lcom/dianxinos/acomponent/ui/ADMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->a(Lcom/dianxinos/acomponent/ui/ADMainActivity;Z)Z

    .line 251
    iget-object v0, p0, Lhy;->a:Lcom/dianxinos/acomponent/ui/ADMainActivity;

    invoke-virtual {v0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->finish()V

    .line 252
    return-void
.end method
