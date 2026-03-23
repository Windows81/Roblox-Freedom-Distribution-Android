.class Landroid/arch/b/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/b/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/b/a/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/arch/b/a/a/b$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/arch/b/a/c$a;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/arch/b/a/a/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/arch/b/a/c$a;)Landroid/arch/b/a/a/b$a;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/b/a/a/b;->a:Landroid/arch/b/a/a/b$a;

    .line 34
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/arch/b/a/c$a;)Landroid/arch/b/a/a/b$a;
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/arch/b/a/a/a;

    .line 38
    new-instance v1, Landroid/arch/b/a/a/b$a;

    invoke-direct {v1, p1, p2, v0, p3}, Landroid/arch/b/a/a/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Landroid/arch/b/a/a/a;Landroid/arch/b/a/c$a;)V

    return-object v1
.end method


# virtual methods
.method public a()Landroid/arch/b/a/b;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/arch/b/a/a/b;->a:Landroid/arch/b/a/a/b$a;

    invoke-virtual {v0}, Landroid/arch/b/a/a/b$a;->a()Landroid/arch/b/a/b;

    move-result-object v0

    return-object v0
.end method
