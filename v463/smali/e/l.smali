.class public final Le/l;
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
.field private final a:Lc/ac;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Lc/ad;


# direct methods
.method private constructor <init>(Lc/ac;Ljava/lang/Object;Lc/ad;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/ac;",
            "TT;",
            "Lc/ad;",
            ")V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Le/l;->a:Lc/ac;

    .line 91
    iput-object p2, p0, Le/l;->b:Ljava/lang/Object;

    .line 92
    iput-object p3, p0, Le/l;->c:Lc/ad;

    return-void
.end method

.method public static a(Lc/ad;Lc/ac;)Le/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/ad;",
            "Lc/ac;",
            ")",
            "Le/l<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p1}, Lc/ac;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Le/l;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Le/l;-><init>(Lc/ac;Ljava/lang/Object;Lc/ad;)V

    return-object v0

    .line 80
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse should not be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "rawResponse == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "body == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/Object;Lc/ac;)Le/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lc/ac;",
            ")",
            "Le/l<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 56
    invoke-virtual {p1}, Lc/ac;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Le/l;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Le/l;-><init>(Lc/ac;Ljava/lang/Object;Lc/ad;)V

    return-object v0

    .line 57
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse must be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "rawResponse == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 102
    iget-object v0, p0, Le/l;->a:Lc/ac;

    invoke-virtual {v0}, Lc/ac;->b()I

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Le/l;->a:Lc/ac;

    invoke-virtual {v0}, Lc/ac;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lc/s;
    .locals 1

    .line 112
    iget-object v0, p0, Le/l;->a:Lc/ac;

    invoke-virtual {v0}, Lc/ac;->f()Lc/s;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 117
    iget-object v0, p0, Le/l;->a:Lc/ac;

    invoke-virtual {v0}, Lc/ac;->c()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Le/l;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public f()Lc/ad;
    .locals 1

    .line 127
    iget-object v0, p0, Le/l;->c:Lc/ad;

    return-object v0
.end method
