.class public Lcom/roblox/client/signup/multiscreen/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/roblox/client/signup/multiscreen/a/a;->a:I

    .line 14
    iput p2, p0, Lcom/roblox/client/signup/multiscreen/a/a;->b:I

    .line 15
    iput p3, p0, Lcom/roblox/client/signup/multiscreen/a/a;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 19
    iget v0, p0, Lcom/roblox/client/signup/multiscreen/a/a;->c:I

    iget v1, p0, Lcom/roblox/client/signup/multiscreen/a/a;->b:I

    iget v2, p0, Lcom/roblox/client/signup/multiscreen/a/a;->a:I

    invoke-static {v0, v1, v2}, Lcom/roblox/client/ae/e;->a(III)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/roblox/client/signup/multiscreen/a/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/roblox/client/signup/multiscreen/a/a;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/roblox/client/signup/multiscreen/a/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
