.class public Lakr;
.super Ljava/lang/Object;
.source "GServiceConsts.java"


# static fields
.field public static a:J

.field public static final b:[B

.field public static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 104
    const-wide/16 v0, -0x1

    sput-wide v0, Lakr;->a:J

    .line 107
    const/16 v0, 0x188

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lakr;->b:[B

    .line 128
    const-string v0, "dianxinos"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lakr;->c:[B

    return-void

    .line 107
    :array_0
    .array-data 0x1
        0x29t
        0x20t
        0x28t
        0x2ct
        0x31t
        0x3t
        0x2ft
        0x21t
        0x31t
        0x3t
        0x2t
        0x10t
        0x6t
        0x13t
        0x0t
        0x29t
        0x56t
        0x4t
        0x54t
        0x2bt
        0x20t
        0x3ft
        0x3dt
        0x2ft
        0x2ft
        0x2et
        0x3ct
        0x27t
        0x28t
        0x30t
        0x56t
        0x39t
        0x24t
        0x27t
        0x26t
        0x31t
        0x27t
        0xet
        0x2at
        0x2dt
        0x39t
        0x38t
        0x2bt
        0x2et
        0xat
        0x11t
        0x46t
        0x19t
        0x59t
        0x53t
        0x22t
        0xbt
        0x56t
        0xbt
        0x23t
        0x1ft
        0xft
        0x34t
        0x16t
        0x18t
        0x3et
        0x2dt
        0x3ft
        0x23t
        0x5bt
        0x18t
        0x2bt
        0x4dt
        0x3dt
        0x5at
        0x21t
        0x9t
        0xdt
        0x3ft
        0x17t
        0x3bt
        0x4et
        0x39t
        0x5bt
        0x26t
        0x2at
        0x2at
        0x11t
        0x3bt
        0x6t
        0x16t
        0x30t
        0x41t
        0x22t
        0x1bt
        0x2ft
        0x59t
        0x2ft
        0x39t
        0x37t
        0x18t
        0x20t
        0x1et
        0x4at
        0x14t
        0x3ft
        0x26t
        0x8t
        0x49t
        0x24t
        0x37t
        0x6t
        0x7t
        0x35t
        0x26t
        0x2t
        0x5t
        0x48t
        0xft
        0x2bt
        0x28t
        0x3bt
        0x5ct
        0x2t
        0x31t
        0x2ct
        0x4ft
        0x1dt
        0x1ct
        0x2et
        0x0t
        0x5dt
        0x1ft
        0x24t
        0x3dt
        0x1ft
        0xdt
        0x1ft
        0x2dt
        0x29t
        0x32t
        0x2et
        0x30t
        0x45t
        0x31t
        0x5et
        0x14t
        0x40t
        0x24t
        0x2et
        0x10t
        0x2ft
        0x5ct
        0x29t
        0x38t
        0x0t
        0x5t
        0x24t
        0x0t
        0x19t
        0x30t
        0xbt
        0x4ct
        0x3dt
        0x26t
        0x1et
        0x42t
        0x3et
        0x7t
        0x4at
        0x1bt
        0x53t
        0x5at
        0x20t
        0xdt
        0x7t
        0xat
        0x11t
        0x36t
        0x8t
        0x40t
        0x18t
        0x1ft
        0x40t
        0x3ft
        0x17t
        0x3dt
        0x23t
        0x3t
        0x33t
        0x3ft
        0x23t
        0x36t
        0x4at
        0x9t
        0x3ct
        0x39t
        0xat
        0x19t
        0x10t
        0x8t
        0xdt
        0x45t
        0x27t
        0x31t
        0xct
        0x26t
        0x3dt
        0x2bt
        0x4t
        0x56t
        0x4bt
        0x6t
        0x27t
        0x28t
        0x21t
        0x17t
        0x2at
        0x3ft
        0xat
        0x1bt
        0x21t
        0x10t
        0x34t
        0x59t
        0x2at
        0x18t
        0x3ct
        0x19t
        0x58t
        0x3et
        0x23t
        0x29t
        0x29t
        0x2ct
        0x4t
        0x0t
        0x2et
        0x7t
        0x5dt
        0x38t
        0x51t
        0x5et
        0x1ct
        0x2t
        0x1at
        0x4t
        0x11t
        0x32t
        0xat
        0x11t
        0x38t
        0x30t
        0x50t
        0x2ct
        0xct
        0x3bt
        0x36t
        0xct
        0x29t
        0xct
        0x4ft
        0x0t
        0x6t
        0x56t
        0x1et
        0x53t
        0x1ct
        0x30t
        0x6t
        0x21t
        0x5dt
        0x1dt
        0x5ft
        0xat
        0x3ct
        0x0t
        0x33t
        0x3bt
        0x22t
        0x8t
        0x21t
        0x3ct
        0xat
        0x27t
        0x3bt
        0x23t
        0x25t
        0x48t
        0x3et
        0x2dt
        0x5dt
        0x29t
        0x12t
        0x1et
        0x16t
        0x1ct
        0x1at
        0x8t
        0x19t
        0x5bt
        0x2at
        0x20t
        0x30t
        0x32t
        0x37t
        0x2t
        0x1bt
        0x8t
        0x58t
        0x22t
        0x3dt
        0x5et
        0x25t
        0x1at
        0x9t
        0x3at
        0x20t
        0x28t
        0x1ct
        0x12t
        0x51t
        0x4t
        0x2t
        0x4bt
        0x28t
        0x9t
        0x2dt
        0x1t
        0x14t
        0x58t
        0x35t
        0x3at
        0x12t
        0x21t
        0x39t
        0x3ct
        0x1ct
        0x0t
        0x1t
        0x55t
        0x5et
        0x40t
        0x2at
        0x28t
        0x3at
        0x45t
        0x2bt
        0xct
        0x7t
        0x1at
        0x13t
        0x2bt
        0x27t
        0x5t
        0x40t
        0x4bt
        0x11t
        0x56t
        0x4t
        0x4ct
        0x2dt
        0x28t
        0x6t
        0x1t
        0x5dt
        0x6t
        0x3bt
        0x14t
        0x1ct
        0xdt
        0xbt
        0xat
        0x40t
        0x5ct
        0x1dt
        0x14t
        0x26t
        0x4dt
        0x59t
        0x3bt
        0x28t
        0x5ct
        0x4bt
        0x51t
        0xft
        0xat
        0x1ct
        0xct
        0x34t
        0x18t
        0x3at
        0x20t
        0x28t
        0x30t
        0x2ft
        0x3at
    .end array-data
.end method
