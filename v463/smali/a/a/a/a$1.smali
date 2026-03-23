.class La/a/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a;->a(La/a/g/a/a;La/a/d/c;)La/a/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/a/d/c;

.field final synthetic b:La/a/g/a/a;

.field final synthetic c:La/a/a/a;


# direct methods
.method constructor <init>(La/a/a/a;La/a/d/c;La/a/g/a/a;)V
    .locals 0

    .line 198
    iput-object p1, p0, La/a/a/a$1;->c:La/a/a/a;

    iput-object p2, p0, La/a/a/a$1;->a:La/a/d/c;

    iput-object p3, p0, La/a/a/a$1;->b:La/a/g/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/a/g/c;)V
    .locals 1

    .line 201
    iget-object v0, p0, La/a/a/a$1;->a:La/a/d/c;

    if-eqz v0, :cond_0

    .line 202
    invoke-interface {v0, p1}, La/a/d/c;->a(La/a/g/c;)V

    .line 204
    :cond_0
    iget-object v0, p0, La/a/a/a$1;->b:La/a/g/a/a;

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0}, La/a/g/a/a;->d()Z

    :cond_1
    if-eqz p1, :cond_2

    .line 207
    iget-object p1, p1, La/a/g/c;->b:La/a/g/c/a;

    sget-object v0, La/a/g/c/a;->b:La/a/g/c/a;

    if-ne p1, v0, :cond_2

    .line 208
    iget-object p1, p0, La/a/a/a$1;->c:La/a/a/a;

    iget-object p1, p1, La/a/a/a;->b:La/a/e/b;

    iget-object v0, p0, La/a/a/a$1;->b:La/a/g/a/a;

    invoke-interface {p1, v0}, La/a/e/b;->a(La/a/g/a/a;)V

    :cond_2
    return-void
.end method
