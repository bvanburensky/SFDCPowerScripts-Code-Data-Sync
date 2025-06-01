 
$packageHash = @{}




$packageHash.add("Document.cd", 
    @{fields        ="
 
 
    AuthorId,
    Body,
    BodyLength,
    ContentType,
    CreatedById,
    CreatedDate,
    Description,
    DeveloperName,
    FolderId,
    Id,
    IsBodySearchable,
    IsDeleted,
    IsInternalUseOnly,
    IsPublic,
    Keywords,
    LastModifiedById,
    LastModifiedDate,
    LastReferencedDate,
    LastViewedDate,
    Name,
    NamespacePrefix,
    SystemModstamp,
    Type,
    Url
 
    ";
        importOrder = "1";
        where       = " where  id != null ";
        externalId  = "Id";
        orderBy     = " order by  SystemModstamp desc  limit 10 ";
     ignore      = $true
     
    } )


$packageHash.add("contentDocument.cd", 
    @{fields        ="
 
    ArchivedById,
    ArchivedDate,
    ContentAssetId,
    ContentModifiedDate,
    ContentSize,
    CreatedById,
    CreatedDate,
    Description,
    FileExtension,
    FileType,
    Id,
    IsArchived,
    IsDeleted,
    LastModifiedById,
    LastModifiedDate,
    LastReferencedDate,
    LastViewedDate,
    LatestPublishedVersionId,
    OwnerId,
    ParentId,
    PublishStatus,
    SharingOption,
    SharingPrivacy,
    SystemModstamp,
    Title
 
    ";
        importOrder = "1";
        where       = " where  id != null ";
        externalId  = "Id";
        orderBy     = " order by  SystemModstamp desc  limit 10 ";
      ignore      = $true
     
    } )





$packageHash.add("contentVersion.Ver", 
    @{fields        =
        " 
       
        Checksum,
        ContentBodyId,
        ContentDocumentId,
        ContentLocation,
        ContentModifiedById,
        ContentModifiedDate,
        ContentSize,
        ContentUrl,
        CreatedById,
        CreatedDate,
        CurrencyIsoCode,
        Description,
        ExternalDataSourceId,
        ExternalDocumentInfo1,
        ExternalDocumentInfo2,
        FeaturedContentBoost,
        FeaturedContentDate,
        FileExtension,
        FileType,
        FirstPublishLocationId,
        FirstPublishLocation.Type,
        FirstPublishLocation.Name,
        FirstPublishLocation.FirstName,
        FirstPublishLocation.LastName,
        Id,
        IsAssetEnabled,
        IsDeleted,
        IsEncrypted,
        IsLatest,
        IsMajorVersion,
        LastModifiedById,
        LastModifiedDate,
    
        NegativeRatingCount,
        NetworkId,
        Origin,
        OwnerId,
        PathOnClient,
        PositiveRatingCount,
        PublishStatus,
        RatingCount,
        ReasonForChange,
        SharingOption,
        SharingPrivacy,
        SystemModstamp,
        TagCsv,
        Tech_Excel_Asset_ID__c,
        TextPreview,
        Title,
        VersionData,
        VersionNumber
 
        
    ";
    importOrder = "1";
    where       = " where  id != null ";
    externalId  = "Id";
    orderBy     = " order by SystemModstamp desc limit 10  ";
  ignore      = $true
     
    } )



return $packageHash
 

