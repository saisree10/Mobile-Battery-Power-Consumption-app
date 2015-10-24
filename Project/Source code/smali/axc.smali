.class public Laxc;
.super Ljava/lang/Object;
.source "WidgetAirplaneDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Laxc;->c:Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;

    iput p2, p0, Laxc;->a:I

    iput-boolean p3, p0, Laxc;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Laxc;->c:Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;

    iget v1, p0, Laxc;->a:I

    iget-boolean v2, p0, Laxc;->b:Z

    invoke-static {v0, v1, v2}, Lapb;->a(Landroid/content/Context;IZ)V

    .line 37
    iget-object v0, p0, Laxc;->c:Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;->a(Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;)Lauu;

    move-result-object v0

    invoke-virtual {v0}, Lauu;->dismiss()V

    .line 38
    return-void
.end method
