.class Lpm;
.super Ljava/lang/Object;
.source "ListGoldAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lou;

.field private b:Landroid/widget/ArrayAdapter;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lpm;->c:Landroid/content/Context;

    .line 228
    iput-object p2, p0, Lpm;->b:Landroid/widget/ArrayAdapter;

    .line 229
    return-void
.end method


# virtual methods
.method public a(Lou;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lpm;->a:Lou;

    .line 233
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lpm;->c:Landroid/content/Context;

    invoke-static {v0}, Lpf;->m(Landroid/content/Context;)V

    .line 238
    iget-object v0, p0, Lpm;->b:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lpm;->a:Lou;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 239
    return-void
.end method
