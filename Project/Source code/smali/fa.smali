.class public Lfa;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# static fields
.field private static final a:Lfd;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 506
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 507
    new-instance v0, Lfe;

    invoke-direct {v0}, Lfe;-><init>()V

    sput-object v0, Lfa;->a:Lfd;

    .line 515
    :goto_0
    return-void

    .line 508
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 509
    new-instance v0, Lfc;

    invoke-direct {v0}, Lfc;-><init>()V

    sput-object v0, Lfa;->a:Lfd;

    goto :goto_0

    .line 510
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 511
    new-instance v0, Lfb;

    invoke-direct {v0}, Lfb;-><init>()V

    sput-object v0, Lfa;->a:Lfd;

    goto :goto_0

    .line 513
    :cond_2
    new-instance v0, Lff;

    invoke-direct {v0}, Lff;-><init>()V

    sput-object v0, Lfa;->a:Lfd;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p1, p0, Lfa;->b:Ljava/lang/Object;

    .line 530
    return-void
.end method

.method public static a()Lfa;
    .locals 2

    .prologue
    .line 560
    new-instance v0, Lfa;

    sget-object v1, Lfa;->a:Lfd;

    invoke-interface {v1}, Lfd;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lfa;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 734
    sget-object v0, Lfa;->a:Lfd;

    iget-object v1, p0, Lfa;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lfd;->b(Ljava/lang/Object;I)V

    .line 735
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 714
    sget-object v0, Lfa;->a:Lfd;

    iget-object v1, p0, Lfa;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lfd;->a(Ljava/lang/Object;Z)V

    .line 715
    return-void
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 780
    sget-object v0, Lfa;->a:Lfd;

    iget-object v1, p0, Lfa;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lfd;->a(Ljava/lang/Object;I)V

    .line 781
    return-void
.end method

.method public c(I)V
    .locals 2
    .parameter

    .prologue
    .line 800
    sget-object v0, Lfa;->a:Lfd;

    iget-object v1, p0, Lfa;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lfd;->c(Ljava/lang/Object;I)V

    .line 801
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1025
    if-ne p0, p1, :cond_1

    .line 1042
    :cond_0
    :goto_0
    return v0

    .line 1028
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 1029
    goto :goto_0

    .line 1031
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 1032
    goto :goto_0

    .line 1034
    :cond_3
    check-cast p1, Lfa;

    .line 1035
    iget-object v2, p0, Lfa;->b:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 1036
    iget-object v2, p1, Lfa;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    .line 1037
    goto :goto_0

    .line 1039
    :cond_4
    iget-object v2, p0, Lfa;->b:Ljava/lang/Object;

    iget-object v3, p1, Lfa;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1040
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lfa;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lfa;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
