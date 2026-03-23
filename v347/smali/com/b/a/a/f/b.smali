.class public Lcom/b/a/a/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/b/a/a/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 9
    invoke-static {}, Lcom/b/a/a/f/b;->a()V

    .line 10
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/b/a/a/f/b$1;

    invoke-direct {v0}, Lcom/b/a/a/f/b$1;-><init>()V

    invoke-static {v0}, Lcom/b/a/a/f/b;->a(Lcom/b/a/a/f/a;)V

    .line 34
    return-void
.end method

.method public static a(Lcom/b/a/a/f/a;)V
    .locals 0

    .prologue
    .line 37
    sput-object p0, Lcom/b/a/a/f/b;->a:Lcom/b/a/a/f/a;

    .line 38
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/b/a/a/f/b;->a:Lcom/b/a/a/f/a;

    invoke-interface {v0, p0, p1}, Lcom/b/a/a/f/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public static varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/b/a/a/f/b;->a:Lcom/b/a/a/f/a;

    invoke-interface {v0, p0, p1, p2}, Lcom/b/a/a/f/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/b/a/a/f/b;->a:Lcom/b/a/a/f/a;

    invoke-interface {v0, p0, p1}, Lcom/b/a/a/f/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/b/a/a/f/b;->a:Lcom/b/a/a/f/a;

    invoke-interface {v0}, Lcom/b/a/a/f/a;->a()Z

    move-result v0

    return v0
.end method
