.class Lawi;
.super Ljava/lang/Object;
.source "RateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lawg;


# direct methods
.method constructor <init>(Lawg;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lawi;->a:Lawg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lawi;->a:Lawg;

    invoke-virtual {v0}, Lawg;->dismiss()V

    .line 47
    return-void
.end method
