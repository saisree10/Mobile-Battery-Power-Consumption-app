.class public Larv;
.super Ljava/lang/Object;
.source "SmartModeBatterySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Larv;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Larv;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->onBackPressed()V

    .line 152
    return-void
.end method
