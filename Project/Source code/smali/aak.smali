.class public Laak;
.super Ljava/lang/Object;
.source "BoosterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lqb;

.field final synthetic b:Lou;

.field final synthetic c:Lcom/dianxinos/powermanager/BoosterActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/BoosterActivity;Lqb;Lou;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Laak;->c:Lcom/dianxinos/powermanager/BoosterActivity;

    iput-object p2, p0, Laak;->a:Lqb;

    iput-object p3, p0, Laak;->b:Lou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Laak;->a:Lqb;

    iget-object v1, p0, Laak;->b:Lou;

    invoke-virtual {v0, v1}, Lqb;->a(Lou;)V

    .line 52
    return-void
.end method
