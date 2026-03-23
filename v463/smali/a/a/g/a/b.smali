.class public La/a/g/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:J

.field private c:Z

.field private d:La/a/c/a/a;

.field private e:I


# virtual methods
.method public a()J
    .locals 4

    .line 39
    iget-wide v0, p0, La/a/g/a/b;->b:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public b()I
    .locals 1

    .line 78
    iget v0, p0, La/a/g/a/b;->a:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, La/a/g/a/b;->c:Z

    return v0
.end method

.method public d()La/a/c/a/a;
    .locals 1

    .line 94
    iget-object v0, p0, La/a/g/a/b;->d:La/a/c/a/a;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 102
    iget v0, p0, La/a/g/a/b;->e:I

    return v0
.end method
