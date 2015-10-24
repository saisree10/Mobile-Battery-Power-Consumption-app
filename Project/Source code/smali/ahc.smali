.class Lahc;
.super Ljava/lang/Object;
.source "SmartSettingCoinPurchaseHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lahb;


# direct methods
.method constructor <init>(Lahb;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lahc;->a:Lahb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lahc;->a:Lahb;

    iget-object v0, v0, Lahb;->a:Landroid/content/Context;

    iget-object v1, p0, Lahc;->a:Lahb;

    iget-object v1, v1, Lahb;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lme;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lahc;->a:Lahb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lahb;->a(I)V

    .line 84
    iget-object v0, p0, Lahc;->a:Lahb;

    invoke-static {v0}, Lahb;->a(Lahb;)V

    .line 85
    return-void
.end method
