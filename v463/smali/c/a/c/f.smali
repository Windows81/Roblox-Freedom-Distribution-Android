.class public final Lc/a/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ld/f;

.field public static final b:Ld/f;

.field public static final c:Ld/f;

.field public static final d:Ld/f;

.field public static final e:Ld/f;

.field public static final f:Ld/f;

.field public static final g:Ld/f;


# instance fields
.field public final h:Ld/f;

.field public final i:Ld/f;

.field final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":status"

    .line 24
    invoke-static {v0}, Ld/f;->a(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lc/a/c/f;->a:Ld/f;

    const-string v0, ":method"

    .line 25
    invoke-static {v0}, Ld/f;->a(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lc/a/c/f;->b:Ld/f;

    const-string v0, ":path"

    .line 26
    invoke-static {v0}, Ld/f;->a(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lc/a/c/f;->c:Ld/f;

    const-string v0, ":scheme"

    .line 27
    invoke-static {v0}, Ld/f;->a(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lc/a/c/f;->d:Ld/f;

    const-string v0, ":authority"

    .line 28
    invoke-static {v0}, Ld/f;->a(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lc/a/c/f;->e:Ld/f;

    const-string v0, ":host"

    .line 29
    invoke-static {v0}, Ld/f;->a(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lc/a/c/f;->f:Ld/f;

    const-string v0, ":version"

    .line 30
    invoke-static {v0}, Ld/f;->a(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lc/a/c/f;->g:Ld/f;

    return-void
.end method

.method public constructor <init>(Ld/f;Ld/f;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lc/a/c/f;->h:Ld/f;

    .line 49
    iput-object p2, p0, Lc/a/c/f;->i:Ld/f;

    .line 50
    invoke-virtual {p1}, Ld/f;->e()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Ld/f;->e()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lc/a/c/f;->j:I

    return-void
.end method

.method public constructor <init>(Ld/f;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-static {p2}, Ld/f;->a(Ljava/lang/String;)Ld/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lc/a/c/f;-><init>(Ld/f;Ld/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-static {p1}, Ld/f;->a(Ljava/lang/String;)Ld/f;

    move-result-object p1

    invoke-static {p2}, Ld/f;->a(Ljava/lang/String;)Ld/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lc/a/c/f;-><init>(Ld/f;Ld/f;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 54
    instance-of v0, p1, Lc/a/c/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 55
    check-cast p1, Lc/a/c/f;

    .line 56
    iget-object v0, p0, Lc/a/c/f;->h:Ld/f;

    iget-object v2, p1, Lc/a/c/f;->h:Ld/f;

    invoke-virtual {v0, v2}, Ld/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/c/f;->i:Ld/f;

    iget-object p1, p1, Lc/a/c/f;->i:Ld/f;

    .line 57
    invoke-virtual {v0, p1}, Ld/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 64
    iget-object v0, p0, Lc/a/c/f;->h:Ld/f;

    invoke-virtual {v0}, Ld/f;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 65
    iget-object v0, p0, Lc/a/c/f;->i:Ld/f;

    invoke-virtual {v0}, Ld/f;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lc/a/c/f;->h:Ld/f;

    invoke-virtual {v1}, Ld/f;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/a/c/f;->i:Ld/f;

    invoke-virtual {v1}, Ld/f;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, Lc/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
