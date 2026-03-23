.class Lio/chirp/b/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lc/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/chirp/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/chirp/b/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/chirp/b/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/chirp/b/a$a;->a:Lio/chirp/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/chirp/b/a$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/chirp/b/a$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lc/u$a;)Lc/ac;
    .locals 3

    iget-object v0, p0, Lio/chirp/b/a$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lio/chirp/b/a$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lc/u$a;->a()Lc/aa;

    move-result-object v1

    invoke-virtual {v1}, Lc/aa;->e()Lc/aa$a;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v1, v2, v0}, Lc/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/aa$a;

    invoke-virtual {v1}, Lc/aa$a;->a()Lc/aa;

    move-result-object v0

    invoke-interface {p1, v0}, Lc/u$a;->a(Lc/aa;)Lc/ac;

    move-result-object p1

    return-object p1
.end method
