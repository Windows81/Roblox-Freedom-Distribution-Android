.class public final Lb/v$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lb/r;

.field private final b:Lb/aa;


# direct methods
.method private constructor <init>(Lb/r;Lb/aa;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lb/v$b;->a:Lb/r;

    .line 265
    iput-object p2, p0, Lb/v$b;->b:Lb/aa;

    .line 266
    return-void
.end method

.method static synthetic a(Lb/v$b;)Lb/r;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lb/v$b;->a:Lb/r;

    return-object v0
.end method

.method public static a(Lb/r;Lb/aa;)Lb/v$b;
    .locals 2

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "body == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lb/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected header: Content-Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lb/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected header: Content-Length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_2
    new-instance v0, Lb/v$b;

    invoke-direct {v0, p0, p1}, Lb/v$b;-><init>(Lb/r;Lb/aa;)V

    return-object v0
.end method

.method static synthetic b(Lb/v$b;)Lb/aa;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lb/v$b;->b:Lb/aa;

    return-object v0
.end method
