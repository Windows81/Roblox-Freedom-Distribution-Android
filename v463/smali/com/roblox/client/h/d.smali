.class public Lcom/roblox/client/h/d;
.super Lcom/roblox/client/h/c;
.source "SourceFile"


# static fields
.field private static final f:Landroidx/databinding/ViewDataBinding$b;

.field private static final g:Landroid/util/SparseIntArray;


# instance fields
.field private final h:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .locals 3

    .line 27
    sget-object v0, Lcom/roblox/client/h/d;->f:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lcom/roblox/client/h/d;->g:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Lcom/roblox/client/h/d;->a(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/roblox/client/h/d;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x2

    .line 30
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/roblox/client/components/RbxTextView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/roblox/client/components/RbxTextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/roblox/client/h/c;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/roblox/client/components/RbxTextView;Lcom/roblox/client/components/RbxTextView;)V

    const-wide/16 v0, -0x1

    .line 127
    iput-wide v0, p0, Lcom/roblox/client/h/d;->i:J

    .line 34
    iget-object p1, p0, Lcom/roblox/client/h/d;->c:Lcom/roblox/client/components/RbxTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/roblox/client/components/RbxTextView;->setTag(Ljava/lang/Object;)V

    .line 35
    iget-object p1, p0, Lcom/roblox/client/h/d;->d:Lcom/roblox/client/components/RbxTextView;

    invoke-virtual {p1, v0}, Lcom/roblox/client/components/RbxTextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 36
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/roblox/client/h/d;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 37
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/roblox/client/h/d;->a(Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Lcom/roblox/client/h/d;->i()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/phonenumber/PhonePrefix;)V
    .locals 4

    .line 74
    iput-object p1, p0, Lcom/roblox/client/h/d;->e:Lcom/roblox/client/phonenumber/PhonePrefix;

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-wide v0, p0, Lcom/roblox/client/h/d;->i:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/roblox/client/h/d;->i:J

    .line 77
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    sget p1, Lcom/roblox/client/c;->a:I

    invoke-virtual {p0, p1}, Lcom/roblox/client/h/d;->a(I)V

    .line 79
    invoke-super {p0}, Lcom/roblox/client/h/c;->e()V

    return-void

    :catchall_0
    move-exception p1

    .line 77
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected b()V
    .locals 9

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-wide v0, p0, Lcom/roblox/client/h/d;->i:J

    const-wide/16 v2, 0x0

    .line 94
    iput-wide v2, p0, Lcom/roblox/client/h/d;->i:J

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v4, p0, Lcom/roblox/client/h/d;->e:Lcom/roblox/client/phonenumber/PhonePrefix;

    const-wide/16 v5, 0x3

    and-long/2addr v0, v5

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_1

    if-eqz v4, :cond_0

    .line 107
    iget-object v5, v4, Lcom/roblox/client/phonenumber/PhonePrefix;->localizedCountryName:Ljava/lang/String;

    .line 109
    iget-object v4, v4, Lcom/roblox/client/phonenumber/PhonePrefix;->prefix:Ljava/lang/String;

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 114
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x2b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    cmp-long v6, v0, v2

    if-eqz v6, :cond_2

    .line 120
    iget-object v0, p0, Lcom/roblox/client/h/d;->c:Lcom/roblox/client/components/RbxTextView;

    invoke-static {v0, v5}, Landroidx/databinding/a/b;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/roblox/client/h/d;->d:Lcom/roblox/client/components/RbxTextView;

    invoke-static {v0, v4}, Landroidx/databinding/a/b;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 95
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 5

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-wide v0, p0, Lcom/roblox/client/h/d;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 55
    monitor-exit p0

    return v0

    .line 57
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i()V
    .locals 2

    .line 45
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 46
    :try_start_0
    iput-wide v0, p0, Lcom/roblox/client/h/d;->i:J

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p0}, Lcom/roblox/client/h/d;->e()V

    return-void

    :catchall_0
    move-exception v0

    .line 47
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
