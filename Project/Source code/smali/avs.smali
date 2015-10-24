.class public Lavs;
.super Landroid/database/DataSetObserver;
.source "WheelView.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lavs;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lavs;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(Z)V

    .line 241
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lavs;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(Z)V

    .line 246
    return-void
.end method
