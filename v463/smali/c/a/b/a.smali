.class public final Lc/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/u;


# instance fields
.field public final a:Lc/x;


# direct methods
.method public constructor <init>(Lc/x;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lc/a/b/a;->a:Lc/x;

    return-void
.end method


# virtual methods
.method public a(Lc/u$a;)Lc/ac;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    check-cast p1, Lc/a/d/i;

    .line 37
    invoke-virtual {p1}, Lc/a/d/i;->a()Lc/aa;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lc/a/d/i;->c()Lc/a/b/g;

    move-result-object v1

    .line 41
    invoke-virtual {v0}, Lc/aa;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 42
    iget-object v3, p0, Lc/a/b/a;->a:Lc/x;

    invoke-virtual {v1, v3, v2}, Lc/a/b/g;->a(Lc/x;Z)Lc/a/d/h;

    move-result-object v2

    .line 43
    invoke-virtual {v1}, Lc/a/b/g;->b()Lc/a/b/c;

    move-result-object v3

    .line 45
    invoke-virtual {p1, v0, v1, v2, v3}, Lc/a/d/i;->a(Lc/aa;Lc/a/b/g;Lc/a/d/h;Lc/i;)Lc/ac;

    move-result-object p1

    return-object p1
.end method
