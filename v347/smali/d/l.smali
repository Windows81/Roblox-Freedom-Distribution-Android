.class public final Ld/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lb/ab;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Lb/ac;


# direct methods
.method private constructor <init>(Lb/ab;Ljava/lang/Object;Lb/ac;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/ab;",
            "TT;",
            "Lb/ac;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Ld/l;->a:Lb/ab;

    .line 91
    iput-object p2, p0, Ld/l;->b:Ljava/lang/Object;

    .line 92
    iput-object p3, p0, Ld/l;->c:Lb/ac;

    .line 93
    return-void
.end method

.method public static a(Lb/ac;Lb/ab;)Ld/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/ac;",
            "Lb/ab;",
            ")",
            "Ld/l",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 77
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "body == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rawResponse == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    invoke-virtual {p1}, Lb/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rawResponse should not be successful response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_2
    new-instance v0, Ld/l;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Ld/l;-><init>(Lb/ab;Ljava/lang/Object;Lb/ac;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lb/ab;)Ld/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lb/ab;",
            ")",
            "Ld/l",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rawResponse == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-virtual {p1}, Lb/ab;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rawResponse must be successful response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    new-instance v0, Ld/l;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Ld/l;-><init>(Lb/ab;Ljava/lang/Object;Lb/ac;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ld/l;->a:Lb/ab;

    invoke-virtual {v0}, Lb/ab;->b()I

    move-result v0

    return v0
.end method

.method public b()Lb/r;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Ld/l;->a:Lb/ab;

    invoke-virtual {v0}, Lb/ab;->f()Lb/r;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Ld/l;->a:Lb/ab;

    invoke-virtual {v0}, Lb/ab;->c()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Ld/l;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public e()Lb/ac;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Ld/l;->c:Lb/ac;

    return-object v0
.end method
