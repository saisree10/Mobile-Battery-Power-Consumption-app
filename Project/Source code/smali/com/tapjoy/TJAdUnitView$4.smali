.class Lcom/tapjoy/TJAdUnitView$4;
.super Ljava/lang/Object;
.source "TJAdUnitView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJAdUnitView;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitView;)V
    .locals 0
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitView$4;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 698
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 699
    return-void
.end method
