.class public final Landroidx/i/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/i/a/c$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/i/a/c$b;)Landroidx/i/a/c;
    .locals 3

    .line 29
    new-instance v0, Landroidx/i/a/a/b;

    iget-object v1, p1, Landroidx/i/a/c$b;->a:Landroid/content/Context;

    iget-object v2, p1, Landroidx/i/a/c$b;->b:Ljava/lang/String;

    iget-object p1, p1, Landroidx/i/a/c$b;->c:Landroidx/i/a/c$a;

    invoke-direct {v0, v1, v2, p1}, Landroidx/i/a/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/i/a/c$a;)V

    return-object v0
.end method
