.class public Ladn;
.super Ljava/lang/Object;
.source "BatteryThemeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Ladn;->a:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Ladn;->a:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->onBackPressed()V

    .line 136
    return-void
.end method
