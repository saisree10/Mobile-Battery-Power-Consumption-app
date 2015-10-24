.class Lhw;
.super Ljava/lang/Object;
.source "ADMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhv;


# direct methods
.method constructor <init>(Lhv;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lhw;->a:Lhv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lhw;->a:Lhv;

    iget-object v0, v0, Lhv;->a:Lcom/dianxinos/acomponent/ui/ADMainActivity;

    iget-object v1, p0, Lhw;->a:Lhv;

    iget-object v1, v1, Lhv;->a:Lcom/dianxinos/acomponent/ui/ADMainActivity;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0046

    invoke-virtual {v1, v2}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 123
    return-void
.end method
