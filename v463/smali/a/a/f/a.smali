.class public La/a/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:La/a/f/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget-object v0, La/a/f/b;->d:La/a/f/b;

    sput-object v0, La/a/f/a;->a:La/a/f/b;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 31
    sget-object v0, La/a/f/a;->a:La/a/f/b;

    invoke-virtual {v0}, La/a/f/b;->ordinal()I

    move-result v0

    sget-object v1, La/a/f/b;->a:La/a/f/b;

    invoke-virtual {v1}, La/a/f/b;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 32
    invoke-static {p0}, La/a/f/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .line 74
    sget-object v0, La/a/f/a;->a:La/a/f/b;

    invoke-virtual {v0}, La/a/f/b;->ordinal()I

    move-result v0

    sget-object v1, La/a/f/b;->c:La/a/f/b;

    invoke-virtual {v1}, La/a/f/b;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 75
    invoke-static {p0}, La/a/f/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BacktraceLogger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 45
    sget-object v0, La/a/f/a;->a:La/a/f/b;

    invoke-virtual {v0}, La/a/f/b;->ordinal()I

    move-result v0

    sget-object v1, La/a/f/b;->b:La/a/f/b;

    invoke-virtual {v1}, La/a/f/b;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 46
    invoke-static {p0}, La/a/f/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 59
    sget-object v0, La/a/f/a;->a:La/a/f/b;

    invoke-virtual {v0}, La/a/f/b;->ordinal()I

    move-result v0

    sget-object v1, La/a/f/b;->c:La/a/f/b;

    invoke-virtual {v1}, La/a/f/b;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 60
    invoke-static {p0}, La/a/f/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
