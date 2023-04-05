package com.inenergis.entity.assetTopology;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
@Getter
@Setter
@DiscriminatorValue("CATALOG")
@NoArgsConstructor
public class CatalogProfileAttribute extends AssetProfileAttribute{


}
