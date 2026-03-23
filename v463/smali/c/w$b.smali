.class public final Lc/w$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lc/s;

.field private final b:Lc/ab;


# direct methods
.method private constructor <init>(Lc/s;Lc/ab;)V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lc/w$b;->a:Lc/s;

    .line 265
    iput-object p2, p0, Lc/w$b;->b:Lc/ab;

    return-void
.end method

.method static synthetic a(Lc/w$b;)Lc/s;
    .locals 0

    .line 223
    iget-object p0, p0, Lc/w$b;->a:Lc/s;

    return-object p0
.end method

.method public static a(Lc/s;Lc/ab;)Lc/w$b;
    .locals 1

    if-eqz p1, :cond_4

    if-eqz p0, :cond_1

    const-string v0, "Content-Type"

    .line 232
    invoke-virtual {p0, v0}, Lc/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p0, :cond_3

    const-string v0, "Content-Length"

    .line 235
    invoke-virtual {p0, v0}, Lc/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 236
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 238
    :cond_3
    :goto_1
    new-instance v0, Lc/w$b;

    invoke-direct {v0, p0, p1}, Lc/w$b;-><init>(Lc/s;Lc/ab;)V

    return-object v0

    .line 230
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "body == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lc/w$b;)Lc/ab;
    .locals 0

    .line 223
    iget-object p0, p0, Lc/w$b;->b:Lc/ab;

    return-object p0
.end method
