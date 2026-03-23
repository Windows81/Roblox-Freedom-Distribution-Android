.class public Landroid/arch/b/b/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/b/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p1, p0, Landroid/arch/b/b/b/a$a;->a:Ljava/lang/String;

    .line 337
    iput-object p2, p0, Landroid/arch/b/b/b/a$a;->b:Ljava/lang/String;

    .line 338
    iput-boolean p3, p0, Landroid/arch/b/b/b/a$a;->c:Z

    .line 339
    iput p4, p0, Landroid/arch/b/b/b/a$a;->d:I

    .line 340
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Landroid/arch/b/b/b/a$a;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 344
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 357
    :cond_0
    :goto_0
    return v1

    .line 345
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 347
    check-cast p1, Landroid/arch/b/b/b/a$a;

    .line 348
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_4

    .line 349
    iget v2, p0, Landroid/arch/b/b/b/a$a;->d:I

    iget v3, p1, Landroid/arch/b/b/b/a$a;->d:I

    if-ne v2, v3, :cond_0

    .line 354
    :cond_2
    iget-object v2, p0, Landroid/arch/b/b/b/a$a;->a:Ljava/lang/String;

    iget-object v3, p1, Landroid/arch/b/b/b/a$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    iget-boolean v2, p0, Landroid/arch/b/b/b/a$a;->c:Z

    iget-boolean v3, p1, Landroid/arch/b/b/b/a$a;->c:Z

    if-ne v2, v3, :cond_0

    .line 357
    iget-object v2, p0, Landroid/arch/b/b/b/a$a;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v0, p0, Landroid/arch/b/b/b/a$a;->b:Ljava/lang/String;

    iget-object v1, p1, Landroid/arch/b/b/b/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :cond_3
    :goto_1
    move v1, v0

    goto :goto_0

    .line 351
    :cond_4
    invoke-virtual {p0}, Landroid/arch/b/b/b/a$a;->a()Z

    move-result v2

    invoke-virtual {p1}, Landroid/arch/b/b/b/a$a;->a()Z

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 357
    :cond_5
    iget-object v2, p1, Landroid/arch/b/b/b/a$a;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Landroid/arch/b/b/b/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 372
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Landroid/arch/b/b/b/a$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/arch/b/b/b/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 373
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Landroid/arch/b/b/b/a$a;->c:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v1

    .line 374
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/arch/b/b/b/a$a;->d:I

    add-int/2addr v0, v1

    .line 375
    return v0

    .line 372
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 373
    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Column{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/b/b/b/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/b/b/b/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notNull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/arch/b/b/b/a$a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", primaryKeyPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/arch/b/b/b/a$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
