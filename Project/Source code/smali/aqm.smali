.class Laqm;
.super Ljava/lang/Object;
.source "SkinShopAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Laql;


# direct methods
.method constructor <init>(Laql;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Laqm;->a:Laql;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Laqm;->a:Laql;

    invoke-static {v0}, Laql;->a(Laql;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    new-instance v1, Ladi;

    iget-object v0, p0, Laqm;->a:Laql;

    iget-object v0, v0, Laql;->a:Laqj;

    invoke-static {v0}, Laqj;->a(Laqj;)Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    move-result-object v2

    iget-object v0, p0, Laqm;->a:Laql;

    invoke-static {v0}, Laql;->a(Laql;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v0, p0, Laqm;->a:Laql;

    iget-object v0, v0, Laql;->a:Laqj;

    invoke-static {v0}, Laqj;->b(Laqj;)Ladp;

    move-result-object v0

    invoke-virtual {v0}, Ladp;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v2, v3, v0}, Ladi;-><init>(Landroid/app/Activity;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v1}, Ladi;->show()V

    .line 145
    :goto_1
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Laqm;->a:Laql;

    invoke-static {v0}, Laql;->a(Laql;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a(Landroid/content/Context;)V

    goto :goto_1
.end method
