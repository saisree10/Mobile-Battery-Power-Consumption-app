.class public Laxd;
.super Ljava/lang/Object;
.source "WidgetAirplaneDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Laxd;->a:Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Laxd;->a:Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;

    invoke-static {v0}, Lapb;->a(Landroid/content/Context;)V

    .line 44
    iget-object v0, p0, Laxd;->a:Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;->a(Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;)Lauu;

    move-result-object v0

    invoke-virtual {v0}, Lauu;->dismiss()V

    .line 45
    return-void
.end method
