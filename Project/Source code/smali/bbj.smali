.class public final Lbbj;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic a:Lbbe;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Lbbe;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 735
    iput-object p1, p0, Lbbj;->a:Lbbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput-object p2, p0, Lbbj;->b:Ljava/lang/String;

    .line 737
    iput-wide p3, p0, Lbbj;->c:J

    .line 738
    iput-object p5, p0, Lbbj;->d:[Ljava/io/InputStream;

    .line 739
    return-void
.end method

.method synthetic constructor <init>(Lbbe;Ljava/lang/String;J[Ljava/io/InputStream;Lbbf;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 730
    invoke-direct/range {p0 .. p5}, Lbbj;-><init>(Lbbe;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/InputStream;
    .locals 1
    .parameter

    .prologue
    .line 754
    iget-object v0, p0, Lbbj;->d:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 765
    iget-object v1, p0, Lbbj;->d:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 766
    invoke-static {v3}, Lbbe;->a(Ljava/io/Closeable;)V

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 768
    :cond_0
    return-void
.end method
