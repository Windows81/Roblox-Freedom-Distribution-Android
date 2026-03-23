.class public La/a/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:La/a/g/c/a;

.field private c:La/a/g/b/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, La/a/g/c/a;->b:La/a/g/c/a;

    iput-object v0, p0, La/a/g/c;->b:La/a/g/c/a;

    return-void
.end method

.method public constructor <init>(La/a/g/b/d;Ljava/lang/String;La/a/g/c/a;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, La/a/g/c/a;->b:La/a/g/c/a;

    iput-object v0, p0, La/a/g/c;->b:La/a/g/c/a;

    .line 50
    invoke-virtual {p0, p1}, La/a/g/c;->a(La/a/g/b/d;)V

    .line 51
    iput-object p2, p0, La/a/g/c;->a:Ljava/lang/String;

    .line 52
    iput-object p3, p0, La/a/g/c;->b:La/a/g/c/a;

    return-void
.end method

.method public static a(La/a/g/b/d;Ljava/lang/Exception;)La/a/g/c;
    .locals 2

    .line 72
    new-instance v0, La/a/g/c;

    .line 73
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object v1, La/a/g/c/a;->a:La/a/g/c/a;

    invoke-direct {v0, p0, p1, v1}, La/a/g/c;-><init>(La/a/g/b/d;Ljava/lang/String;La/a/g/c/a;)V

    return-object v0
.end method


# virtual methods
.method public a(La/a/g/b/d;)V
    .locals 0

    .line 56
    iput-object p1, p0, La/a/g/c;->c:La/a/g/b/d;

    return-void
.end method
