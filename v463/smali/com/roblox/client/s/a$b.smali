.class Lcom/roblox/client/s/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/s/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field b:I

.field c:J

.field d:J

.field e:I


# direct methods
.method constructor <init>(Ljava/lang/String;JJI)V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lcom/roblox/client/s/a$b;->a:Ljava/lang/String;

    const/4 p1, 0x1

    .line 239
    iput p1, p0, Lcom/roblox/client/s/a$b;->b:I

    .line 240
    iput-wide p2, p0, Lcom/roblox/client/s/a$b;->c:J

    .line 241
    iput-wide p4, p0, Lcom/roblox/client/s/a$b;->d:J

    .line 242
    iput p6, p0, Lcom/roblox/client/s/a$b;->e:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 245
    iget v0, p0, Lcom/roblox/client/s/a$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/roblox/client/s/a$b;->b:I

    return-void
.end method

.method a(IJ)V
    .locals 0

    .line 252
    iput p1, p0, Lcom/roblox/client/s/a$b;->b:I

    .line 253
    iput-wide p2, p0, Lcom/roblox/client/s/a$b;->c:J

    return-void
.end method

.method b()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/roblox/client/s/a$b;->b:I

    return v0
.end method

.method c()J
    .locals 2

    .line 247
    iget-wide v0, p0, Lcom/roblox/client/s/a$b;->c:J

    return-wide v0
.end method

.method d()J
    .locals 2

    .line 248
    iget-wide v0, p0, Lcom/roblox/client/s/a$b;->d:J

    return-wide v0
.end method

.method e()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/roblox/client/s/a$b;->e:I

    return v0
.end method
