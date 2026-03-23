.class Lcom/google/c/b/b;
.super Lcom/google/c/b/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/c/b/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/c/b/u",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/c/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/b",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient b:[Lcom/google/c/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/c/b/z",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient c:[Lcom/google/c/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/c/b/z",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient e:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient f:I

.field private final transient g:I

.field private transient h:Lcom/google/c/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/u",
            "<TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 40
    new-instance v0, Lcom/google/c/b/b;

    sget-object v3, Lcom/google/c/b/y;->d:[Ljava/util/Map$Entry;

    move-object v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/c/b/b;-><init>([Lcom/google/c/b/z;[Lcom/google/c/b/z;[Ljava/util/Map$Entry;II)V

    sput-object v0, Lcom/google/c/b/b;->a:Lcom/google/c/b/b;

    return-void
.end method

.method private constructor <init>([Lcom/google/c/b/z;[Lcom/google/c/b/z;[Ljava/util/Map$Entry;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/c/b/z",
            "<TK;TV;>;[",
            "Lcom/google/c/b/z",
            "<TK;TV;>;[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;II)V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/c/b/u;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/google/c/b/b;->b:[Lcom/google/c/b/z;

    .line 117
    iput-object p2, p0, Lcom/google/c/b/b;->c:[Lcom/google/c/b/z;

    .line 118
    iput-object p3, p0, Lcom/google/c/b/b;->e:[Ljava/util/Map$Entry;

    .line 119
    iput p4, p0, Lcom/google/c/b/b;->f:I

    .line 120
    iput p5, p0, Lcom/google/c/b/b;->g:I

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/google/c/b/b;)[Lcom/google/c/b/z;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/c/b/b;->c:[Lcom/google/c/b/z;

    return-object v0
.end method

.method static synthetic b(Lcom/google/c/b/b;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/c/b/b;->f:I

    return v0
.end method

.method static synthetic c(Lcom/google/c/b/b;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/c/b/b;->g:I

    return v0
.end method

.method static synthetic d(Lcom/google/c/b/b;)[Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/c/b/b;->e:[Ljava/util/Map$Entry;

    return-object v0
.end method


# virtual methods
.method a()Lcom/google/c/b/ad;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/ad",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/c/b/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/google/c/b/ad;->f()Lcom/google/c/b/ad;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 142
    :cond_0
    new-instance v0, Lcom/google/c/b/aa$a;

    iget-object v1, p0, Lcom/google/c/b/b;->e:[Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v1}, Lcom/google/c/b/aa$a;-><init>(Lcom/google/c/b/y;[Ljava/util/Map$Entry;)V

    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public d()Lcom/google/c/b/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/u",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/c/b/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-static {}, Lcom/google/c/b/u;->f()Lcom/google/c/b/u;

    move-result-object v0

    .line 173
    :cond_0
    :goto_0
    return-object v0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/google/c/b/b;->h:Lcom/google/c/b/u;

    .line 173
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/c/b/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/c/b/b$a;-><init>(Lcom/google/c/b/b;Lcom/google/c/b/b$1;)V

    iput-object v0, p0, Lcom/google/c/b/b;->h:Lcom/google/c/b/u;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/c/b/b;->b:[Lcom/google/c/b/z;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/c/b/b;->b:[Lcom/google/c/b/z;

    iget v1, p0, Lcom/google/c/b/b;->f:I

    invoke-static {p1, v0, v1}, Lcom/google/c/b/d;->a(Ljava/lang/Object;[Lcom/google/c/b/z;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/google/c/b/b;->g:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/c/b/b;->e:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method
