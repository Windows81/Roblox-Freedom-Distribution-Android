.class final Ld/i$k;
.super Ld/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/i",
        "<",
        "Lb/v$b;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ld/i$k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 238
    new-instance v0, Ld/i$k;

    invoke-direct {v0}, Ld/i$k;-><init>()V

    sput-object v0, Ld/i$k;->a:Ld/i$k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ld/i;-><init>()V

    .line 241
    return-void
.end method


# virtual methods
.method a(Ld/k;Lb/v$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    if-eqz p2, :cond_0

    .line 245
    invoke-virtual {p1, p2}, Ld/k;->a(Lb/v$b;)V

    .line 247
    :cond_0
    return-void
.end method

.method bridge synthetic a(Ld/k;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    check-cast p2, Lb/v$b;

    invoke-virtual {p0, p1, p2}, Ld/i$k;->a(Ld/k;Lb/v$b;)V

    return-void
.end method
