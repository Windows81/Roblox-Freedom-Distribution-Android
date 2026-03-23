.class public La/a/h/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/e/a;


# static fields
.field private static final transient a:Ljava/lang/String;


# instance fields
.field private transient b:La/a/h/c;

.field private c:Ljava/lang/String;

.field private d:La/a/d/b;

.field private e:La/a/d/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, La/a/h/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/h/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(La/a/b;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, La/a/h/a;->d:La/a/d/b;

    .line 35
    iput-object v0, p0, La/a/h/a;->e:La/a/d/d;

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, La/a/b;->a()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, La/a/h/a;->c:Ljava/lang/String;

    .line 50
    new-instance p1, La/a/h/c;

    const-class v0, La/a/h/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/a/h/a;->c:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, La/a/h/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, La/a/h/a;->b:La/a/h/c;

    return-void

    .line 44
    :cond_0
    sget-object p1, La/a/h/a;->a:Ljava/lang/String;

    const-string v0, "BacktraceCredentials parameter passed to BacktraceApi constructor is null"

    invoke-static {p1, v0}, La/a/f/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BacktraceCredentials cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(La/a/g/a;La/a/d/c;)V
    .locals 3

    .line 68
    new-instance v0, La/a/h/b;

    iget-object v1, p0, La/a/h/a;->d:La/a/d/b;

    iget-object v2, p0, La/a/h/a;->e:La/a/d/d;

    invoke-direct {v0, p1, p2, v1, v2}, La/a/h/b;-><init>(La/a/g/a;La/a/d/c;La/a/d/b;La/a/d/d;)V

    .line 70
    iget-object p1, p0, La/a/h/a;->b:La/a/h/c;

    invoke-virtual {p1, v0}, La/a/h/c;->a(La/a/h/b;)V

    return-void
.end method
