.class public Lasf;
.super Ljava/lang/Object;
.source "SmartModeTimeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lasf;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lasf;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->onBackPressed()V

    .line 159
    return-void
.end method
