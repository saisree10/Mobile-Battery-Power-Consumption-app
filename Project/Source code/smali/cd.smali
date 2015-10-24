.class Lcd;
.super Lca;
.source "AccessibilityDelegateCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Lca;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbz;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 217
    new-instance v0, Lce;

    invoke-direct {v0, p0, p1}, Lce;-><init>(Lcd;Lbz;)V

    invoke-static {v0}, Lcj;->a(Lcl;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
